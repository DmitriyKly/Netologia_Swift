//
//  ViewController.swift
//  Netology_IB_Instruments
//
//  Created by dmitriy on 12/5/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

/*
 Задание
 Создайте новый проект с названием ‘Netology_IB_Instruments’, используя шаблон ‘Single View Application’.
 ---
 Создайте файл ProfileView.xib.
 ---
 Поместите в ‘ProfileView’ следующие элементы:
 
 UIImageView для фото пользователя,
 ---
 UILabel для имени пользователя,
 ---
 UILabel для информации о дне рождения,
 ---
 UILabel для информации о месте нахождения (город),
 ---
 UITextView для подписи.
 По желанию можете установить различные стили, цвета и размеры шрифтов.
 ---
 Используя материал из лекций, расположите UI-элементы согласно макетам. Точные размеры элементов и отступы в этом задании не важны. Главное, чтобы все элементы сохраняли порядок согласно макету, а также растягивались и сжимались в зависимости от размера дисплея устройства.
 ---
 Создайте файл ProfileView.swift. Унаследуйтесь от класса UIView.
 ---
 
 При помощи Assistant Editor добавьте @IBOoutlet для всех элементов, установите для них имена, подходящие по смыслу (не забывайте, что имена для свойств должны быть в стиле lowerCamelCase). Если элементы связи не создаются, проверьте, установили ли вы ProfileView в качестве управляющего класса для ProfileView.xib в InterfaceBuilder
 
 ---
 
 Загрузите в проект фотографию для аватара и установите её для UIImageView.
 
 ---
 
 Создайте новый файл Profile.storyboard.
 
 ---
 
 Создайте новый файл ProfileViewController.swift, унаследуйтесь от классаUIViewController.

 ---
 
 Установите ProfileViewController в качестве управляющего класса для Profile.storyboard в InterfaceBuilder.
 
 ---
 
 Установите ProfileViewController в качестве Initial View Controller.
 
 ---
 
 Установите Profile.storyboard в качестве Main interface в настройках проекта.
 
 ---
 
 В коде ProfileViewController создайте экземпляр ProfileView, используя метод Bundle.main.loadNibNamed, как в лекции. Настройте отображение загруженного view, используя свойство frame и Autoresizing Mask.
 ---
 
 Запустите ваш проект (Cmd+R). Проверьте, что приложение в эмуляторе соответствует макетам. Попробуйте запустить в эмуляторе на экранах разного размера, например iPhone SE и iPhone 8 plus. Все элементы должны одинаково выглядеть на экранах разных размеров — растягиваться или сужаться в зависимости от размера экрана."
 */
