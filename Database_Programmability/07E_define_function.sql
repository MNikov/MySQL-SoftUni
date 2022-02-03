# The first function is taken from the lecturer, the rest are from other students

DELIMITER $$;
CREATE FUNCTION ufn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
RETURNS BIT
DETERMINISTIC
BEGIN
	RETURN word REGEXP CONCAT('^[', set_of_letters, ']+$');
END $$;

# ----------

CREATE FUNCTION ufn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))  
RETURNS INT
DETERMINISTIC
	BEGIN
		DECLARE lengthWord INT DEFAULT CHAR_LENGTH(word);
		DECLARE startIndex INT DEFAULT 1;
        WHILE startIndex < lengthWord + 1
        DO
			IF LOCATE(substring(word, startIndex, 1), set_of_letters) < 1 
			THEN 
				RETURN 0;
            END IF;
            SET startIndex = startIndex + 1;
        END WHILE;
        RETURN 1;
	END;
    
# ----------

CREATE FUNCTION ufn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
RETURNS BIT
DETERMINISTIC
BEGIN
    DECLARE count_let INT DEFAULT 1;
    DECLARE length INT;
    DECLARE current_char VARCHAR(5);
    SET length = CHAR_LENGTH(word);
 
    iter_word: LOOP
    SET current_char = SUBSTR(word,count_let,1);
    IF LOCATE(current_char,set_of_letters)=0 THEN RETURN 0;
    ELSEIF count_let=length THEN RETURN 1;
    END IF;
    SET count_let = count_let + 1;
    END LOOP iter_word;
END