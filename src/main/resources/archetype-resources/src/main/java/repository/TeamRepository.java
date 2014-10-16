#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.repository;

import org.springframework.data.repository.CrudRepository;
import ${package}.model.Team;

/**
 * Author: Daniel
 */
public interface TeamRepository extends CrudRepository<Team, Long> {
}
