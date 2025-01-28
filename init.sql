-- public.challenges definition

-- Drop table

CREATE DATABASE core_db;
\c core_db;

CREATE TABLE challenges (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	description text NULL,
	endpoint varchar(50) NOT NULL,
	test_cases json NULL,
	java text NULL,
	python text NULL,
	CONSTRAINT challenges_endpoint_key UNIQUE (endpoint),
	CONSTRAINT challenges_pkey PRIMARY KEY (id)
);


-- Insert statements
INSERT INTO challenges ("name",description,endpoint,test_cases,java,python) VALUES
	 ('Quick Sort','Sort the array using quick sort','/quick-sort','{"input":["3 2 1","14 9 10","-1 0 0"], "output":["1 2 3", "9 10 14", "-1 0 0"]}','import java.util.*;
public class Answer{
public static List<Integer> compute(List<Integer> input){ return input;}}','python-quick-sort'),
	 ('Is Palindrome','Check if the string is palindrome','/is-palindrome','{"input":["abba", "abcd", "dkd"], "output":[true, false, true]}','import java.util.*;','python-is-palindrome'),
	 ('Fibonacci Series','Generate Fibonacci Series','/fibonacci','{"input":[10, 1, 2], "output":["0 1 1 2 3 5 8 13 21 34", "0", "0 1"]}','import java.util.*;
public class Answer{
public static List<Integer> compute(int n){
}
}','python-fibonacci');
