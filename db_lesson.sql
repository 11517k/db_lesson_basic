Q1
mysql> CREATE TABLE departments (
   -> department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(20) NOT NULL,
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );

    Q2
    ALTER TABLE people add department_id INT unsigned after email;

    Q3
    追加する部署一覧(departments)
    INSERT INTO departments (name) VALUES
    ('営業'),
    ('開発'),
    ('経理'),
    ('人事'),
    ('情報システム');

    追加する人の条件(people)
    mysql> INSERT INTO people (name, email, department_id, age, gender)
    VALUES
    ('田中ゆうこ', 'tanaka@beyond-works.co.jp', 1, 25, 2),
    ('福田だいすけ', 'fukuda@beyond-works.co.jp', 1, 42, 1),
    ('豊島はなこ', 'toyoshima@beyond-works.co.jp', 1, 34, 2),
    ('早坂てつお', 'hayasaka@beyond-works.co.jp', 2, 61, 1),
    ('木村しゅん', 'kimura@beyond-works.co.jp', 2, 26, 1),
    ('三浦さやか', 'miura@beyond-works.co.jp', 2, 29, 2),
    ('大谷まこと', 'otani@beyond-works.co.jp', 2, 37, 1),
    ('村上なおみ', 'murakami@beyond-works.co.jp', 3, 31, 2),
    ('石田ゆうた', 'ishida@beyond-works.co.jp', 4, 38, 1),
    ('斉藤まりこ', 'saito@beyond-works.co.jp', 5, 27, 2);

    追加する日報の条件(reports)
    mysql> INSERT INTO reports (person_id, content) VALUES
    (27, 'クライアントとの打ち合わせを実施しました。'),
    (28, '資料作成と会議準備に追われた一日でした。'),
    (29, 'バグ修正に集中し、無事にリリースできました。'),
    (30, '後輩のサポートを行い、教育の大切さを実感。'),
    (31, '定期メンテナンスを実施し、システムは安定。'),
    (32, '新しいフレームワークの学習を開始しました。'),
    (33, '社内ツールの改善点を提案し、好評を得た。'),
    (34, '会計処理の見直し作業で効率化を図りました。'),
    (35, '人事評価制度の説明会に参加しました。'),
    (36, 'セキュリティ研修を受けて意識が高まりました。');

    INSERT INTO people (name, email, department_id, age, gender) VALUES
    ('鈴木たかし', 'suzuki@beyond-works.co.jp', NULL, 20, 1),
    ('中田ゆうこ', 'nakata@beyond-works.co.jp', NULL, 25, 2),
    ('福島だいすけ', 'fukushima@beyond-works.co.jp', NULL, 42, 1),
    ('田島はなこ', 'tajima@beyond-works.co.jp', NULL, 34, 2),
    ('不思議沢みちこ', NULL, NULL, NULL, NULL);

    Q4
    UPDATE people
    SET department_id = CASE
    WHEN person_id = 52 THEN 1
    WHEN person_id = 53 THEN 2
    WHEN person_id = 54 THEN 3
    WHEN person_id = 55 THEN 4
    WHEN person_id = 56 THEN 5
    ELSE department_id
    END
    WHERE person_id IN (52, 53, 54, 55, 56);

    Q5
    SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;

    Q6
    peopleテーブルのname,email,ageカラムからdepartment_id = 1(部署ID:1)のレコードを、
    作成日の古い順（昇順）で表示する。


    Q7
    SELECT name FROM people WHERE (gender = 1 AND age >= 40 AND age < 50) OR (gender = 2 AND age >= 20 AND age < 30) ;

    Q8
    SELECT name FROM people WHERE department_id = 1 ORDER BY age ;

    Q9
    SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2;

    Q10
    SELECT people.name, departments.name, reports.content FROM people
    INNER JOIN departments ON people.department_id = departments.department_id
    INNER JOIN reports ON people.person_id = reports.person_id;

    Q11
    SELECT people.name FROM people LEFT OUTER JOIN reports
    ON people.person_id = reports.person_id
    WHERE reports.person_id IS NULL;
