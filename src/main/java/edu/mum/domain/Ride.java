package edu.mum.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.*;

/**
 * 
 * @author Tesfay
 *
 */
@Entity
@Table(name = "RIDE")
public class Ride implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "RIDE_ID")
	private Long id = null;

	@Version
	@Column(name = "OBJ_VERSION")
	private int version = 0;

	private String rideOriginCity;

	private String rideDestinationCity;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "rideOwnerUserId")
	private User rideOwner;

	@Column(name = "AVAILABLE_SEATS")
	private int availableSeats;

	@Column(name = "REMAINING_SEATS")
	private int remainingSeats;

	@Column
	private String phone;

	@Column(name = "MAX_LUGAGGE")
	private double maxLuggagePerUser;

	@Column(name = "DESCRIPTION", length = 4000, nullable = false)
	private String description;

	private double ridePrice;

	@ManyToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	private Set<User> usersThatReservedRide = new HashSet<User>();

	@Transient
	private Set<String> rideUsersId = new HashSet<String>();

	public String getRideOriginCity() {
		return rideOriginCity;
	}

	public void setRideOriginCity(String rideOriginCity) {
		this.rideOriginCity = rideOriginCity;
	}

	public String getRideDestinationCity() {
		return rideDestinationCity;
	}

	public void setRideDestinationCity(String rideDestinationCity) {
		this.rideDestinationCity = rideDestinationCity;
	}

	public Set<User> getUsersThatReservedRide() {
		return usersThatReservedRide;
	}

	public void setUsersThatReservedRide(Set<User> usersThatReservedRide) {
		this.usersThatReservedRide = usersThatReservedRide;
	}

	public void addUsersThatReservedRide(User user) {
		usersThatReservedRide.add(user);
	}
	
	public Set<String> getRideUsersId() {
		return rideUsersId;
	}

	public void setRideUsersId(Set<String> rideUsersId) {
		this.rideUsersId = rideUsersId;
	}

	public void addRideUsersId(String userId) {
		rideUsersId.add(userId);
	}

	public int getAvailableSeats() {
		return availableSeats;
	}

	public void setAvailableSeats(int availableSeats) {
		this.availableSeats = availableSeats;
	}

	public double getRidePrice() {
		return ridePrice;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public double getMaxLuggagePerUser() {
		return maxLuggagePerUser;
	}

	public void setMaxLuggagePerUser(double maxLuggagePerUser) {
		this.maxLuggagePerUser = maxLuggagePerUser;
	}

	public void setRidePrice(double ridePrice) {
		this.ridePrice = ridePrice;
	}

	public Date getRideDate() {
		return rideDate;
	}

	public void setRideDate(Date rideDate) {
		this.rideDate = rideDate;
	}

	public Date getRideTime() {
		return rideTime;
	}

	public void setRideTime(Date rideTime) {
		this.rideTime = rideTime;
	}

	public User getRideOwner() {
		return rideOwner;
	}

	public int getRemainingSeats() {
		return this.availableSeats - 1;
	}

	public Collection<String> getCarImages() {
		return carImages;
	}

	@Transient
	private List<String> carImages = new ArrayList<String>();

	@Transient String rideThumbnail = "https://s-media-cache-ak0.pinimg.com/236x/fa/a5/24/faa52466577feeb25cff2f28fe11fa77.jpg";
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATED", nullable = true, updatable = false)
	private Date created = new Date();

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "RIDE_DATE", nullable = true, updatable = false)
	private Date rideDate;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "RIDE_TIME", nullable = true, updatable = false)
	private Date rideTime;

	// ********************** Accessor Methods ********************** //

	@Transient
	private String rideOwnerId;

	public String getRideOwnerId() {
		return rideOwnerId;
	}

	public void setRideOwnerId(String rideOwnerId) {
		this.rideOwnerId = rideOwnerId;
	}

	public Long getId() {
		return id;
	}

	public int getVersion() {
		return version;
	}

	public void setRideOwner(User rideOwner) {
		this.rideOwner = rideOwner;
	}

	public void setRemainingSeats(int remainingSeats) {
		this.remainingSeats = remainingSeats;
	}

	public void addCarImages(String image) {
		this.carImages.add(image);
	}

	public void setCarImages(List<String> carImages) {
		this.carImages = carImages;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreated() {
		return created;
	}

	// ********************** Common Methods ********************** //

	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (!(o instanceof Ride))
			return false;

		final Ride item = (Ride) o;

		if (!(created.getTime() == item.created.getTime()))
			return false;
		if (rideOriginCity != null ? !rideOriginCity.equals(item.rideOriginCity) : item.rideOriginCity != null)
			return false;

		return true;
	}

	public int hashCode() {
		int result;
		result = (rideOriginCity != null ? rideOriginCity.hashCode() : 0);
		result = 29 * result + created.hashCode();
		return result;
	}

	public int compareTo(Object o) {
		if (o instanceof Ride) {
			// Don't compare Date objects! Use the time in milliseconds!
			return Long.valueOf(this.getCreated().getTime()).compareTo(Long.valueOf(((Ride) o).getCreated().getTime()));
		}
		return 0;
	}

	@Override
	public String toString() {
		return "Ride [rideOwner=" + rideOwner + ", availableSeats=" + availableSeats + ", description=" + description
				+ ", usersThatReservedRide=" + usersThatReservedRide + ", rideOwnerId=" + rideOwnerId + "]";
	}

	// ********************** Business Methods ********************** //

}
