// Generated by gencpp from file robot_control_simulation/ball_trajResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_CONTROL_SIMULATION_MESSAGE_BALL_TRAJRESPONSE_H
#define ROBOT_CONTROL_SIMULATION_MESSAGE_BALL_TRAJRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_control_simulation
{
template <class ContainerAllocator>
struct ball_trajResponse_
{
  typedef ball_trajResponse_<ContainerAllocator> Type;

  ball_trajResponse_()
    : ee_trans_error(0.0)
    , ee_rot_error(0.0)
    , ball_caught(false)  {
    }
  ball_trajResponse_(const ContainerAllocator& _alloc)
    : ee_trans_error(0.0)
    , ee_rot_error(0.0)
    , ball_caught(false)  {
  (void)_alloc;
    }



   typedef float _ee_trans_error_type;
  _ee_trans_error_type ee_trans_error;

   typedef float _ee_rot_error_type;
  _ee_rot_error_type ee_rot_error;

   typedef uint8_t _ball_caught_type;
  _ball_caught_type ball_caught;





  typedef boost::shared_ptr< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ball_trajResponse_

typedef ::robot_control_simulation::ball_trajResponse_<std::allocator<void> > ball_trajResponse;

typedef boost::shared_ptr< ::robot_control_simulation::ball_trajResponse > ball_trajResponsePtr;
typedef boost::shared_ptr< ::robot_control_simulation::ball_trajResponse const> ball_trajResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator1> & lhs, const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ee_trans_error == rhs.ee_trans_error &&
    lhs.ee_rot_error == rhs.ee_rot_error &&
    lhs.ball_caught == rhs.ball_caught;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator1> & lhs, const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_control_simulation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "856a7f83327d8ae1441596252020ead2";
  }

  static const char* value(const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x856a7f83327d8ae1ULL;
  static const uint64_t static_value2 = 0x441596252020ead2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_control_simulation/ball_trajResponse";
  }

  static const char* value(const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 ee_trans_error\n"
"float32 ee_rot_error\n"
"bool ball_caught\n"
"\n"
;
  }

  static const char* value(const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ee_trans_error);
      stream.next(m.ee_rot_error);
      stream.next(m.ball_caught);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ball_trajResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_control_simulation::ball_trajResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_control_simulation::ball_trajResponse_<ContainerAllocator>& v)
  {
    s << indent << "ee_trans_error: ";
    Printer<float>::stream(s, indent + "  ", v.ee_trans_error);
    s << indent << "ee_rot_error: ";
    Printer<float>::stream(s, indent + "  ", v.ee_rot_error);
    s << indent << "ball_caught: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ball_caught);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CONTROL_SIMULATION_MESSAGE_BALL_TRAJRESPONSE_H
