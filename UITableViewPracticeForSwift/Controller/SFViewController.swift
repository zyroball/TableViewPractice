//
//  ViewController.swift
//  UITableViewPracticeForSwift
//
//  Created by yu_ookubo on 2020/07/01.
//  Copyright © 2020 yu_ookubo. All rights reserved.
//

import UIKit

class SFViewController: UIViewController,
    UITableViewDelegate,
    UITableViewDataSource
{
    //Outlet
    @IBOutlet var tableView: UITableView!
    //Entity
    let entity: Entity     = Entity()
    var resource: [Entity] = []

    //MARK: Life Cycle
    //MARKの書き方は、決まりはないが記述レベルを統一したい
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setResource() //データモデルロード
        setView() //ビュー初期化
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
    }
    
    //MARK: Private
    private func setView()
    {
        setTableView()
    }
    private func setTableView()
    {
        //テーブルビュー初期化
        tableView.register(UINib(nibName: kCellNibName,
                                 bundle: nil),
                           forCellReuseIdentifier: kCellIdentifierName)
        tableView.delegate      = self
        tableView.dataSource    = self
        
        tableView.reloadData()
    }
    
    private func setResource()
    {
        let stab: StabEntity = StabEntity() //スタブからデータを運ぶ
        resource = stab.loadStabEntity()
    }
    
    //MARK: UITableViewDataSource
    //テーブルビューには必須の定義
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifierName,
                                                 for: indexPath) as! SFTableViewCell
        let entity: Entity = resource[indexPath.row]
        cell.updateCell(entity: entity)

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {//テーブルビューには必須の定義
        return resource.count
    }
}

