ALTER TABLE rego_otk ADD COLUMN date TIMESTAMP;
UPDATE rego_otk SET date=now();
BEGIN;
ALTER TABLE rego_otk DROP CONSTRAINT "$1";
ALTER TABLE rego_otk ADD CONSTRAINT "$1" FOREIGN KEY (name) REFERENCES users ON DELETE CASCADE;
END;