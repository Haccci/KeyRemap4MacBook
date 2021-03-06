#ifndef REMAPFUNCBASE_HPP
#define REMAPFUNCBASE_HPP

#include "bridge.h"
#include "remap.hpp"
#include "KeyCode.hpp"
#include "FlagStatus.hpp"
#include "Vector.hpp"

namespace org_pqrs_KeyRemap4MacBook {
  namespace RemapFunc {
    struct PairKeyFlags {
      PairKeyFlags(void) {}
      PairKeyFlags(KeyCode k) : key(k) {}

      KeyCode key;
      Flags flags;
    };
    DECLARE_VECTOR(PairKeyFlags);

    struct PairConsumerKeyFlags {
      PairConsumerKeyFlags(void) {}
      PairConsumerKeyFlags(ConsumerKeyCode k) : key(k) {}

      ConsumerKeyCode key;
      Flags flags;
    };
    DECLARE_VECTOR(PairConsumerKeyFlags);

    struct PairPointingButtonFlags {
      PairPointingButtonFlags(void) {}
      PairPointingButtonFlags(PointingButton b) : button(b) {}

      PointingButton button;
      Flags flags;
    };
    DECLARE_VECTOR(PairPointingButtonFlags);
  }
}

#endif
