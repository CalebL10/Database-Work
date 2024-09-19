--task 1
SELECT OWNER.OwnerFirstName, 
OWNER.OwnerLastName, 
HOUSE.HouseID, 
HOUSE.HouseAddress
FROM OWNER JOIN HOUSE ON OWNER.OwnerID = HOUSE.OwnerID;

--task 2
SELECT STAYID, STAYPRICE, STAYDISCOUNT, CHANNELCOMMISSION
FROM STAY JOIN CHANNEL ON STAY.ChannelID = CHANNEL.ChannelID;

--task 3
SELECT * 
FROM GUEST G JOIN GUEST H ON G.GuestFirstName = H.GuestFirstName
AND G.GuestLastName = H.GuestLastName
AND G.GuestID != H.GuestID;

--task 4
SELECT OwnerFirstName, OwnerLastName
FROM OWNER
WHERE OwnerID IN (SELECT OwnerID FROM HOUSE WHERE HouseNumberofRooms >= 2);

--another approach
SELECT OwnerFirstName, OwnerLastName, HouseNumberofRooms
FROM Owner INNER JOIN HOUSE ON Owner.OwnerID = House.OwnerID
WHERE HouseNumberofRooms >= 2;

--task 5
SELECT STAYID, GUESTID, CEILING(ABS(STAYPRICE)) AS REFUND
FROM STAY
WHERE STAYPRICE < 0;

SELECT STAYID, GUESTID, STAYPRICE
FROM STAY
WHERE STAYPRICE < 0;

--task 6
SELECT House.HouseAddress,
Stay.StayStartDate,
Stay.StayEndDate,
Channel.ChannelID,
Channel.ChannelCommission
FROM HOUSE JOIN STAY ON HOUSE.HouseID = STAY.HouseID
JOIN CHANNEL ON STAY.ChannelID = CHANNEL.ChannelID
WHERE CHANNEL.ChannelCommission >= ANY 
(SELECT CHANNEL.ChannelCommission FROM CHANNEL WHERE ChannelCommission >= 0.07);

--second approach
SELECT House.HouseAddress,
Stay.StayStartDate,
Stay.StayEndDate,
Channel.ChannelID,
Channel.ChannelCommission
FROM HOUSE JOIN STAY ON HOUSE.HouseID = STAY.HouseID
JOIN CHANNEL ON STAY.ChannelID = CHANNEL.ChannelID
WHERE CHANNEL.ChannelCommission >= 0.07;
