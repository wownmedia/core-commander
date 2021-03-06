#!/usr/bin/env bash

core_uninstall ()
{
    ascii

    heading "Uninstalling ARK Core..."

    forger_delete

    relay_delete

    database_destroy

    database_drop_user

    sudo rm -rf "$CORE_DIR"
    sudo rm -rf "$CORE_DATA"

    success "Uninstalled ARK Core!"
}
