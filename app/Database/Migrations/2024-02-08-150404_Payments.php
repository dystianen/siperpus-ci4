<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Payments extends Migration
{
    protected $forge;
    public function __construct()
    {
        $this->forge = \Config\Database::forge();
    }

    public function up()
    {
        $this->forge->addField([
            'payment_id' => [
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => true,
                'auto_increment' => true,
            ],
            'borrow_id' => [
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => true,
            ],
            'date' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
            'total' => [
                'type' => 'INT',
                'constraint' => 100,
                'null' => true,
            ],
            'proof_of_payment' => [
                'type' => 'VARCHAR',
                'constraint' => 100,
                'null' => true,
            ]
        ]);

        $this->forge->addKey('payment_id', true);
        $this->forge->addForeignKey('borrow_id', 'borrows', 'borrow_id');
        $this->forge->createTable('payments');
    }

    public function down()
    {
        $this->forge->dropTable('payments');
    }
}
