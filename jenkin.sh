echo "Building BaseTools..."
make -C $WORKSPACE/BaseTools

. $WORKSPACE/edksetup.sh
echo "executed edksetup file"

export EDK_TOOLS_PATH=$WORKSPACE/BaseTools
. $WORKSPACE/edksetup.sh BaseTools

cd $WORKSPACE
build >> Build.txt
