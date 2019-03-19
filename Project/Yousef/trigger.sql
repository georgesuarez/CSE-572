CREATE OR REPLACE TRIGGER print_game_info
BEFORE INSERT OR UPDATE ON Game
FOR EACH ROW
BEGIN
	dbms_output.put_line('Title: ' || :new.title);
	dbms_output.put_line('Rating: ' || :new.Rating);
	dbms_output.put_line('Platform: ' || :new.Platform);
	dbms_output.put_line('Genre: ' || :new.Genre);
	dbms_output.put_line('Description: ' || :new.Description);
	dbms_output.put_line('Availability: ' || :new.Availablity);
END;
/

CREATE OR REPLACE TRIGGER inv_count_is_zero
BEFORE INSERT OR UPDATE on Game
FOR EACH ROW
BEGIN
	IF :new.InventoryCount = 0 THEN :new.Availablity := 'F';
	END IF;
END;
/

CREATE OR REPLACE TRIGGER after_insert_inv_count
AFTER UPDATE on Game
BEGIN
	dbms_output.put_line('InventoryCount is for ' || :title || ' is: ' || :InventoryCount);	
END;
/

