//
//  User.swift
//  LoginApp
//
//  Created by Vlad Ryabtsev on 24.12.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser () -> User {
        User(login: "JL",
             password: "1234",
             person: Person(name: "John",
                            surname: "Lennon"))
    }
}

struct Person {
    let name: String
    let surname: String
    
    var foulName: String {
        "\(name) Winston Ono \(surname)"
    }
    
    var description: String {
        """
Was an English singer, songwriter, musician and peace activist who achieved worldwide fame as the founder, co-songwriter, co-lead vocalist and rhythm guitarist of the Beatles.
Lennon was characterised for the rebellious nature and acerbic wit in his music, writing and drawings,on film, and in interviews. His songwriting partnership with Paul McCartney remains the most successful in history.

Born in Liverpool, Lennon became involved in the skiffle craze as a teenager. In 1956, he formed the Quarrymen, which evolved into the Beatles in 1960. Sometimes called "the smart Beatle", he was initially the group's de facto leader, a role gradually ceded to McCartney.
"""
    }
    
    var theBeatlesDescription: String {
        """
The Beatles were an English rock band formed in Liverpool in 1960, whose best-known line-up comprised John Lennon, Paul McCartney, George Harrison and Ringo Starr. They are regarded as the most influential band of all time and were integral to the development of 1960s counterculture and popular music's recognition as an art form. Rooted in skiffle, beat and 1950s rock and roll, their sound incorporated elements of classical music and traditional pop in innovative ways; the band later explored music styles ranging from ballads and Indian music to psychedelia and hard rock. As pioneers in recording, songwriting and artistic presentation, the Beatles revolutionised many aspects of the music industry and were often publicised as leaders of the era's youth and sociocultural movements. 
"""
    }    
}
