# vim: tabstop=4 shiftwidth=4 softtabstop=4
#
# Copyright 2013 OpenStack LLC
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.
#

"""empty message

Revision ID: f047fb12bf
Revises: initial
Create Date: 2013-02-09 22:46:00.477882

"""


# revision identifiers, used by Alembic.
revision = 'f047fb12bf'
down_revision = 'initial'

from alembic import op
import sqlalchemy as sa
from billingstack.storage.impl_sqlalchemy.types import UUID


def upgrade(options=None):
    ### commands auto generated by Alembic - please adjust! ###
    op.create_table('user_merchant_roles',
    sa.Column('user_id', UUID(), nullable=True),
    sa.Column('merchant_id', UUID(), nullable=True),
    sa.Column('role', sa.Unicode(length=40), nullable=True),
    sa.ForeignKeyConstraint(['merchant_id'], ['merchant.id'], ondelete='CASCADE'),
    sa.ForeignKeyConstraint(['user_id'], ['user.id'], ondelete='CASCADE'),
    sa.PrimaryKeyConstraint()
    )
    ### end Alembic commands ###


def downgrade(config=None):
    ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('user_merchant_roles')
    ### end Alembic commands ###