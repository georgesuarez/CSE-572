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
	dbms_output.put_line('InventoryCount: ' || :new.InventoryCount || chr(10));
END;
/

CREATE OR REPLACE TRIGGER inv_count_is_zero
BEFORE INSERT OR UPDATE  on Game
FOR EACH ROW
BEGIN
	IF :new.InventoryCount = 0 THEN :new.Availablity := 'F';
	ELSE :new.Availablity := 'T';
	END IF;
END;
/

