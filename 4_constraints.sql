-- Ciro Brodmann, Lukas Buchli, Felix Reiniger

ALTER TABLE student ADD CONSTRAINT UNIQUE_student_email_address UNIQUE(email_address);
ALTER TABLE student ADD CONSTRAINT CK_student_email_address CHECK (email_address ~
      ('^'
     || regexp_replace(lower(unaccent(first_name)), '[^a-z]', '', 'g')
     || '.'
     || regexp_replace(lower(unaccent(last_name)), '[^a-z]', '', 'g')
     || '[0-9]*@west.ch$'
     )
);

ALTER TABLE lecturer ADD CONSTRAINT UNIQUE_lecturer_email_address UNIQUE(email_address);
ALTER TABLE lecturer ADD CONSTRAINT CK_lecturer_email_address CHECK (email_address ~
      ('^'
     || regexp_replace(lower(unaccent(first_name)), '[^a-z]', '', 'g')
     || '.'
     || regexp_replace(lower(unaccent(last_name)), '[^a-z]', '', 'g')
     || '[0-9]*@west.ch$'
     )
);

ALTER TABLE lecturer ADD CONSTRAINT CK_short_name CHECK (short_name ~
     ('^'
    || left(regexp_replace(upper(unaccent(first_name)), '[^A-Z]', '', 'g'), 2)
    || left(regexp_replace(upper(unaccent(last_name)), '[^A-Z]', '', 'g'), 3)
    || '[0-9]*$'
    )
);

ALTER TABLE lecturer ADD CONSTRAINT CK_suffix_same CHECK (
      regexp_match(email_address, '[0-9]') = regexp_match(short_name, '[0-9]')
);
