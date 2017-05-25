package edu.mum.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Version;
import javax.validation.Valid;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "USERS")
public class User implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "USER_ID")
	private Long id = null;

	@Version
	private int version = 0;

	@Size(min = 4, max = 19, message = "{Size.name}")
	@Column(name = "FIRSTNAME", nullable = false)
	private String firstName;

	@NotEmpty
	@Column(name = "LASTNAME", nullable = false)
	private String lastName;

	@Email(message = "{email}")
	@NotEmpty
	@Column(name = "EMAIL", nullable = false)
	private String email;

	@Column(name = "RANK", nullable = false)
	private Integer ranking = 0;

	@Column(name = "PHONE", nullable = true)
	private String phone;
	
	@Column(name = "IS_ADMIN", nullable = false)
	private boolean admin = false;

	@Valid
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "userId")
	private UserCredentials userCredentials;

	@OneToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE }, mappedBy = "user")
	private List<Address> addresses = new ArrayList<Address>();

	@OneToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	private Set<Ride> createdRides = new HashSet<Ride>();

	@ManyToMany(mappedBy="usersThatReservedRide",fetch=FetchType.LAZY) //, cascade= {CascadeType.PERSIST,CascadeType.MERGE })
	private List<Ride> reservedRides = new ArrayList<Ride>();
	
	public Long getId() {
		return id;
	}

	public void addCreatedRide(Ride ride) {
		createdRides.add(ride);
	}
	
	public Set<Ride> getCreatedRides() {
		return createdRides;
	}

	public void setCreatedRides(Set<Ride> createdRides) {
		this.createdRides = createdRides;
	}

	public void addReservedRide(Ride ride) {
		reservedRides.add(ride);
	}
	
	public List<Ride> getReservedRides() {
		return reservedRides;
	}

	public void setReservedRides(List<Ride> reservedRides) {
		this.reservedRides = reservedRides;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstname) {
		this.firstName = firstname;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastname) {
		this.lastName = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getRanking() {
		return ranking;
	}

	public void setRanking(Integer ranking) {
		this.ranking = ranking;
	}

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	public UserCredentials getUserCredentials() {
		return userCredentials;
	}

	public void setUserCredentials(UserCredentials userCredentials) {
		this.userCredentials = userCredentials;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	public void addAddress(Address address) {
		this.addresses.add(address);
		address.setUser(this);
	}

	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", admin=" + admin
				+ ", createdRides=" + createdRides + ", reservedRides=" + reservedRides + "]";
	}
	
}