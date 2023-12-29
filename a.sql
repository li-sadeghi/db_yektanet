create table Advertiser (
	id INT PRIMARY KEY,
	clicks INT NOT NULL,
	views INT NOT NULL,
	name VARCHAR (20)
);
create table Ad (
	id INT PRIMARY KEY,
	click INT NOT NULL,
	views INT NOT NULL,
	title VARCHAR (20),
	imgUrl VARCHAR NOT NULL,
	link VARCHAR NOT NULL,
	advertiser_id INT NOT NULL,
	constraint fk_Advertiser
		foreign key(id)
			references Advertiser(id)
);
INSERT INTO 
    Advertiser(id,clicks, views, name)
VALUES
	(1, 0, 0, 'ali'),
    	(2, 0, 0, 'aliakbar'),
    	(3, 0, 0, 'sadaf')
RETURNING *;
INSERT INTO 
    Ad(id,click, views, title, imgUrl, link, advertiser_id)
VALUES
	(1, 0, 0, 'shampoo', 'imgUrl1', 'link1', 3),
    	(2, 0, 0, 'saboon', 'imgUrl2', 'link2', 2),
    	(3, 0, 0, 'kise', 'imgUrl2', 'link3', 1)
RETURNING *;
