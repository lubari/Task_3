USE company

ALTER TABLE employee
ADD CONSTRAINT fk_position
FOREIGN KEY (position_id)
REFERENCES position(id);

ALTER TABLE employee
ADD CONSTRAINT fk_project
FOREIGN KEY (project_id)
REFERENCES project(id);

ALTER TABLE vacancies
ADD CONSTRAINT fk_position_id
FOREIGN KEY (position_id)
REFERENCES position(id);

ALTER TABLE equipment
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id)
REFERENCES employee(id);