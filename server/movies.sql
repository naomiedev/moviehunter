-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 16 jan. 2024 à 09:08
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `movies`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `launch_date` varchar(255) NOT NULL,
  `localization` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `name`, `description`, `launch_date`, `localization`, `categorie`, `price`, `image_url`, `places`) VALUES
(00000000000000000001, 'X-MAN', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '23 avril 2024', 'Douala Yassa', 'vibes', 7500, 'movie1.jpg', 300),
(00000000000000000002, 'SPIDER MAN 2', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '23 avril 2024', 'Douala Yassa', 'vibes', 7500, 'movie2.jpg', 247),
(00000000000000000003, 'SPIDER MAN 3', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '23 avril 2024', 'Douala Yassa', 'vibes', 7500, 'movie3.jpg', 23),
(00000000000000000004, 'VALKYRIE', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '23 fevrier 2025', 'Bonamoussadi sable', 'vibes', 7500, 'movie4.jpg', 653),
(00000000000000000005, 'GLADIATOR', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '2 mai 2024', 'Bonapiso', 'vibes', 15000, 'movie5.jpg', 354),
(00000000000000000006, 'ICE AGE', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '2 janvier 2025', 'Kotto', 'vibes', 7500, 'movie6.jpg', 200),
(00000000000000000007, 'TRANSFORMERS', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '12 fevrier 2024', 'Bonapriso', 'fun', 10000, 'movie7.jpg', 653),
(00000000000000000008, 'MAGNETO', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '30 septembre 2025', 'Kotto', 'fun', 10000, 'movie8.jpg', 182),
(00000000000000000009, 'KUNG FU PANDA', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '5 mars 2025', 'Bonamoussadi sable', 'fun', 10000, 'movie9.jpg', 354),
(00000000000000000010, 'EAGLE EYE', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '23 fevrier 2025', 'Bonapriso', 'fun', 10000, 'movie10.jpg', 19),
(00000000000000000011, 'NARNIA', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '2 mars 2024', 'Bonapiso', 'fun', 19000, 'movie11.jpg', 54),
(00000000000000000012, 'ANGELS & DEMONS', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '2 decembre 2024', 'Kotto', 'action', 13000, 'movie12.jpg', 693),
(00000000000000000013, 'HOUSE', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '2 mai 2024', 'Bonapiso', 'action', 15000, 'movie13.jpg', 543),
(00000000000000000014, 'VACANCY', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '22 janvier 2024', 'Kotto', 'action', 6500, 'movie14.jpg', 5),
(00000000000000000015, 'MIRRORS', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '1 fevrier 2024', 'Bonapriso', 'action', 11000, 'movie15.jpg', 564),
(00000000000000000016, 'THE KINGDOM', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '10 fevrier 2024', 'Bonamoussadi sable', 'action', 10000, 'movie16.jpg', 64),
(00000000000000000017, 'MOTIVES', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '5 mars 2025', 'Bonamoussadi sable', 'action', 9000, 'movie17.jpg', 64),
(00000000000000000018, 'THE PRESTIGE', '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis adipisci\r\n  sit, nam soluta fugiat, corporis dignissimos inventore, aliquam ad ducimus\r\n  voluptatum placeat iste consequuntur magnam voluptas! Quisquam quia culpa\r\n  voluptates reprehenderit assumenda iste modi doloribus minus quae? Delectus\r\n  vero sunt suscipit ducimus magnam tenetur adipisci placeat assumenda, tempora\r\n  vel voluptatem consequatur nihil illum deserunt! Perspiciatis eum dignissimos\r\n  debitis hic dolores maxime maiores non quas voluptas quae magnam omnis natus\r\n  iste fugiat nam illum repudiandae voluptate aut tempora, delectus veniam\r\n  expedita? Id optio, nam molestiae adipisci vero hic provident tempora dolorum\r\n  blanditiis reprehenderit aut et minus fugit, ipsa, illum atque! Dolorum.', '21 fevrier 2025', 'Bonapriso', 'action', 12000, 'movie18.jpg', 73);

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `cni_number` varchar(255) NOT NULL,
  `films_name` varchar(255) NOT NULL,
  `films_price` float NOT NULL,
  `ticket_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
