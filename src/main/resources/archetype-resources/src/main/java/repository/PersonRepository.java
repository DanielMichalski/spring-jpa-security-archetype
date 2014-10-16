#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import ${package}.model.Person;

/**
 * Author: Daniel
 */
public interface PersonRepository extends CrudRepository<Person, Long> {

    public Iterable<Person> findByName(String name);

    @Query("select p from Person p where p.name = :name order by p.name")
    public Iterable<Person> findByNameUsingJPQL(@Param("name") String name);
}
