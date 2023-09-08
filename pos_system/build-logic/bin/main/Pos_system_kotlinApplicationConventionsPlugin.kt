/**
 * Precompiled [pos_system.kotlin-application-conventions.gradle.kts][Pos_system_kotlin_application_conventions_gradle] script plugin.
 *
 * @see Pos_system_kotlin_application_conventions_gradle
 */
public
class Pos_system_kotlinApplicationConventionsPlugin : org.gradle.api.Plugin<org.gradle.api.Project> {
    override fun apply(target: org.gradle.api.Project) {
        try {
            Class
                .forName("Pos_system_kotlin_application_conventions_gradle")
                .getDeclaredConstructor(org.gradle.api.Project::class.java, org.gradle.api.Project::class.java)
                .newInstance(target, target)
        } catch (e: java.lang.reflect.InvocationTargetException) {
            throw e.targetException
        }
    }
}
