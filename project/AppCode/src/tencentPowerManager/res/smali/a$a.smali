.class public final La$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final BatteryLevelScreenView:[I = null

.field public static final BatteryLevelScreenView_Level_gravity:I = 0x0

.field public static final BatteryScreenView:[I = null

.field public static final BatteryScreenView_view_gravity:I = 0x0

.field public static final ButtonView:[I = null

.field public static final ButtonView_buttontext:I = 0x1

.field public static final ButtonView_buttontype:I = 0x0

.field public static final ButtonView_textsize:I = 0x2

.field public static final CheckBoxView:[I = null

.field public static final CheckBoxView_checked:I = 0x1

.field public static final CheckBoxView_type:I = 0x0

.field public static final CpuStatusView:[I = null

.field public static final CpuStatusView_cpuactive:I = 0x1

.field public static final CpuStatusView_cputext:I = 0x0

.field public static final SwitchButtonView:[I = null

.field public static final SwitchButtonView_iconnormal:I = 0x1

.field public static final SwitchButtonView_iconpressed:I = 0x2

.field public static final SwitchButtonView_name:I = 0x3

.field public static final SwitchButtonView_postion:I = 0x0

.field public static final TabButtonView:[I = null

.field public static final TabButtonView_active:I = 0x1

.field public static final TabButtonView_activeicon:I = 0x2

.field public static final TabButtonView_defaulticon:I = 0x3

.field public static final TabButtonView_text:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x7f010010

    aput v1, v0, v2

    sput-object v0, La$a;->BatteryLevelScreenView:[I

    new-array v0, v3, [I

    const v1, 0x7f01000f

    aput v1, v0, v2

    sput-object v0, La$a;->BatteryScreenView:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, La$a;->ButtonView:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, La$a;->CheckBoxView:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, La$a;->CpuStatusView:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, La$a;->SwitchButtonView:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, La$a;->TabButtonView:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data
.end method
