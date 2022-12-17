<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bdd.css"/>
    <title>F1 BDD</title>
</head>
<body class='bg'>

<h1 class='center'> Base de données Formule 1 DUMPPPPP </h1>

<div>
    <tr>
        <?php
            try {
                $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                echo "<br>"; 

                foreach($connexion->query("
                SELECT max(idpilote) from pilote;")
                    as $call){
                        print("<h2> Classement 2022 des Pilotes <h2> <br/> Nombre de pilotes : $call[0]<br/>");
                    }
                    $connexion = null;
                } catch (PDOException $e) {
                    print "Erreur !: " . $e->getMessage() . "<br/>";
                    die();
                }
            
            ?>
    </tr>
            
    <div>
    <table  class='cheatcode'>
        <td>
            <?php
            try {
                $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                echo "<br>"; 

                foreach($connexion->query("
                SELECT idpilote from resultat;")
                    as $call){
                        print(" $call[0]<br/>");
                    }
                    $connexion = null;
                } catch (PDOException $e) {
                    print "Erreur !: " . $e->getMessage() . "<br/>";
                    die();
                }
            
            ?>

        </td>

         <td>

            <?php
            try {
                $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                echo "<br>"; 

                foreach($connexion->query("
                SELECT nompilote from pilote;")
                    as $call){
                        print(" $call[0]<br/>");
                    }
                    $connexion = null;
                } catch (PDOException $e) {
                    print "Erreur !: " . $e->getMessage() . "<br/>";
                    die();
                }

            ?>

        </td>

        <td>
            <?php
            try {
                $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                echo "<br>"; 

                foreach($connexion->query("
                SELECT payspilote from pilote;")
                    as $call){
                        print(" $call[0]<br/>");
                    }
                    $connexion = null;
                } catch (PDOException $e) {
                    print "Erreur !: " . $e->getMessage() . "<br/>";
                    die();
                }
            ?>
        </td>

        <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT pilotepoints from resultat;")
                        as $call){
                            print(" $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                ?>
        </td>

    </table>
    </div>
    
    
    <div>
    <table>
    <tr>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT max(idecurie) from ecurie;")
                        as $call){
                            print("<h2> Classement 2022 des Ecuries </h2> <br/> Nombre d'écuries: $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
        
                </tr>
        <td> 
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT idecurie from ecurie;")
                        as $call){
                            print(" $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
        </td>
               

        <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT nomecurie from ecurie;")
                        as $call){
                            print(" $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
        </td>
        <td>
                    <?php
                    try {
                        $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                        echo "<br>"; 

                        foreach($connexion->query("
                        SELECT enginecurie from ecurie;")
                            as $call){
                                print(" $call[0]<br/>");
                            }
                            $connexion = null;
                        } catch (PDOException $e) {
                            print "Erreur !: " . $e->getMessage() . "<br/>";
                            die();
                        }
                    
                    ?>
        </td>
        <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 
                    foreach($connexion->query("
                    SELECT ecuriepoints from resultat                
                    where idecurie<11;")
                        as $call){
                            print(" $call[0]<br/>");        #where idecurie<11 pour avoir les 10 premier car apres valeurs  set to'NULL'
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
        </td>
                </table>

        <div class='cheatcode2'>
            <table>
            <tr>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT max(idchampion) from champion;")         #primitive max() pour avoir le nombre de fois ou ils ont été champ au total
                        as $call){
                            print("Champions sur la grille: <br/> x $call[0] champions <br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>

            </tr>
            <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT anneechampion from champion")
                        as $call){
                            print(" $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
            </td>
            <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT idpilote from champion
                    order by idchampion asc")                   #order by pour avoir le bon ordre de leur obtention du titre
                        as $call){
                            print(" winnerId : $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
            </td>
            
            <td>
            <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT nbrvictoirechamp from champion")
                        as $call){
                            print("wins: $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>

            
            </td>

            <td>
            <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT nbrpointschamp from champion")
                        as $call){
                            print(" pts: $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
            </td>
                </table>

        </div>

        <div>
            <table>
                <tr>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT max(idgp) from grand_prix")
                        as $call){
                            print("Liste des Grand Prix 2022 : $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
                </tr>
                <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT idgp from grand_prix order by idgp asc")
                        as $call){
                            print("$call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
                </td>
                <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT nom_circuit from grand_prix")
                        as $call){
                            print("$call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
                </td>
                <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT nomville from grand_prix")
                        as $call){
                            print("$call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
                </td>
                <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT nompays from grand_prix")
                        as $call){
                            print("$call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
                </td>
                <td>
                <?php
                try {
                    $connexion = new PDO('mysql:host=localhost;dbname=formule1', 'root', 'root');
                    echo "<br>"; 

                    foreach($connexion->query("
                    SELECT idpilote from grand_prix order by idgp asc")
                        as $call){
                            print("winnerId : $call[0]<br/>");
                        }
                        $connexion = null;
                    } catch (PDOException $e) {
                        print "Erreur !: " . $e->getMessage() . "<br/>";
                        die();
                    }
                
                ?>
                </td>
                </table>


</div>

</body>
</html>