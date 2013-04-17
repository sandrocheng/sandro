.class public final Ldp;
.super Ljava/lang/Object;


# static fields
.field public static final BasePreference:[I = null

.field public static final BasePreference_isShowLine_base:I = 0x0

.field public static final ButtonView:[I = null

.field public static final ButtonView_buttontext:I = 0x1

.field public static final ButtonView_buttontype:I = 0x0

.field public static final ButtonView_textsize:I = 0x2

.field public static final CheckBoxView:[I = null

.field public static final CheckBoxView_type:I = 0x0

.field public static final FlashNumView:[I = null

.field public static final FlashNumView_needShowZero:I = 0x1

.field public static final FlashNumView_numtype:I = 0x0

.field public static final ListPreference:[I = null

.field public static final ListPreference_entries:I = 0x1

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_isShowLine_list:I = 0x0

.field public static final Panel:[I = null

.field public static final Panel_animationDuration:I = 0x0

.field public static final Panel_closedHandle:I = 0x4

.field public static final Panel_linearFlying:I = 0x2

.field public static final Panel_openedHandle:I = 0x3

.field public static final Panel_position:I = 0x1

.field public static final SwitchButton:[I

.field public static final SwitchButton_button_text:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Ldp;->BasePreference:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldp;->ButtonView:[I

    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Ldp;->CheckBoxView:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ldp;->FlashNumView:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Ldp;->ListPreference:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Ldp;->Panel:[I

    new-array v0, v3, [I

    const v1, 0x7f01000a

    aput v1, v0, v2

    sput-object v0, Ldp;->SwitchButton:[I

    return-void

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data
.end method
