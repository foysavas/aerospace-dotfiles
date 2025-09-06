#!/bin/bash

next_workspace=$1

aerospace move-node-to-workspace "$next_workspace"
aerospace workspace "$next_workspace"