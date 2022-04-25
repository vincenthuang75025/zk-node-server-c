cd "$circuit_name"_cpp
./"$circuit_name" ../inputs/"$1".json ../inputs/"$1".wtns
cd ..
$path_to_rapidsnark_prover "$circuit_name".zkey inputs/"$1".wtns proof_"$1".json public_"$1".json
cat proof_"$1".json