.class public final LQQPIM/EUserAction;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EMUA_ADD_TO_WHITE:LQQPIM/EUserAction; = null

.field public static final EMUA_AUTO_RECOVER:LQQPIM/EUserAction; = null

.field public static final EMUA_AUTO_RECOVER2:LQQPIM/EUserAction; = null

.field public static final EMUA_AUTO_RECOVER3:LQQPIM/EUserAction; = null

.field public static final EMUA_DOUBT_SENDER2BLACK:LQQPIM/EUserAction; = null

.field public static final EMUA_DOUBT_SENDER2CONTACT:LQQPIM/EUserAction; = null

.field public static final EMUA_DOUBT_SENDER2WHITE:LQQPIM/EUserAction; = null

.field public static final EMUA_IMPEACH:LQQPIM/EUserAction; = null

.field public static final EMUA_IMPEACH_AUTO_PROMPT:LQQPIM/EUserAction; = null

.field public static final EMUA_IMPEACH_SYSTEM:LQQPIM/EUserAction; = null

.field public static final EMUA_INTERCEPT2RECOVER:LQQPIM/EUserAction; = null

.field public static final EMUA_INTERCEPT_SENDER2BLACK:LQQPIM/EUserAction; = null

.field public static final EMUA_INTERCEPT_SENDER2CONTACT:LQQPIM/EUserAction; = null

.field public static final EMUA_INTERCEPT_SENDER2WHITE:LQQPIM/EUserAction; = null

.field public static final EMUA_MAX:LQQPIM/EUserAction; = null

.field public static final EMUA_MIN:LQQPIM/EUserAction; = null

.field public static final EMUA_MOVE2FOLDER:LQQPIM/EUserAction; = null

.field public static final EMUA_NOCHARGE_SENDER:LQQPIM/EUserAction; = null

.field public static final EMUA_NOCHARGE_SMS:LQQPIM/EUserAction; = null

.field public static final EMUA_PASS_SENDER2BLACK:LQQPIM/EUserAction; = null

.field public static final EMUA_PHONE_DEL:LQQPIM/EUserAction; = null

.field public static final EMUA_SENDER2BLACK:LQQPIM/EUserAction; = null

.field public static final EMUA_SENDER2CONTACT:LQQPIM/EUserAction; = null

.field public static final EMUA_USER_REPORT_TELTAG:LQQPIM/EUserAction; = null

.field public static final EMUA_WEB_DEL:LQQPIM/EUserAction; = null

.field public static final _EMUA_ADD_TO_WHITE:I = 0xf

.field public static final _EMUA_AUTO_RECOVER:I = 0x12

.field public static final _EMUA_AUTO_RECOVER2:I = 0x15

.field public static final _EMUA_AUTO_RECOVER3:I = 0x16

.field public static final _EMUA_DOUBT_SENDER2BLACK:I = 0x5

.field public static final _EMUA_DOUBT_SENDER2CONTACT:I = 0x6

.field public static final _EMUA_DOUBT_SENDER2WHITE:I = 0x7

.field public static final _EMUA_IMPEACH:I = 0xb

.field public static final _EMUA_IMPEACH_AUTO_PROMPT:I = 0x14

.field public static final _EMUA_IMPEACH_SYSTEM:I = 0x13

.field public static final _EMUA_INTERCEPT2RECOVER:I = 0xc

.field public static final _EMUA_INTERCEPT_SENDER2BLACK:I = 0xa

.field public static final _EMUA_INTERCEPT_SENDER2CONTACT:I = 0x8

.field public static final _EMUA_INTERCEPT_SENDER2WHITE:I = 0x9

.field public static final _EMUA_MAX:I = 0x18

.field public static final _EMUA_MIN:I = 0x0

.field public static final _EMUA_MOVE2FOLDER:I = 0x3

.field public static final _EMUA_NOCHARGE_SENDER:I = 0x11

.field public static final _EMUA_NOCHARGE_SMS:I = 0x10

.field public static final _EMUA_PASS_SENDER2BLACK:I = 0x4

.field public static final _EMUA_PHONE_DEL:I = 0x1

.field public static final _EMUA_SENDER2BLACK:I = 0xd

.field public static final _EMUA_SENDER2CONTACT:I = 0xe

.field public static final _EMUA_USER_REPORT_TELTAG:I = 0x17

.field public static final _EMUA_WEB_DEL:I = 0x2

.field private static __values:[LQQPIM/EUserAction;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EUserAction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EUserAction;->$assertionsDisabled:Z

    const/16 v0, 0x19

    new-array v0, v0, [LQQPIM/EUserAction;

    sput-object v0, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const-string v3, "EMUA_MIN"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_MIN:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const-string v2, "EMUA_PHONE_DEL"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_PHONE_DEL:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const-string v1, "EMUA_WEB_DEL"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_WEB_DEL:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const-string v1, "EMUA_MOVE2FOLDER"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_MOVE2FOLDER:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const-string v1, "EMUA_PASS_SENDER2BLACK"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_PASS_SENDER2BLACK:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EMUA_DOUBT_SENDER2BLACK"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_DOUBT_SENDER2BLACK:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EMUA_DOUBT_SENDER2CONTACT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_DOUBT_SENDER2CONTACT:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EMUA_DOUBT_SENDER2WHITE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_DOUBT_SENDER2WHITE:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EMUA_INTERCEPT_SENDER2CONTACT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_INTERCEPT_SENDER2CONTACT:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EMUA_INTERCEPT_SENDER2WHITE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_INTERCEPT_SENDER2WHITE:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "EMUA_INTERCEPT_SENDER2BLACK"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_INTERCEPT_SENDER2BLACK:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "EMUA_IMPEACH"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_IMPEACH:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "EMUA_INTERCEPT2RECOVER"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_INTERCEPT2RECOVER:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0xd

    const/16 v2, 0xd

    const-string v3, "EMUA_SENDER2BLACK"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_SENDER2BLACK:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0xe

    const/16 v2, 0xe

    const-string v3, "EMUA_SENDER2CONTACT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_SENDER2CONTACT:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0xf

    const/16 v2, 0xf

    const-string v3, "EMUA_ADD_TO_WHITE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_ADD_TO_WHITE:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const-string v3, "EMUA_NOCHARGE_SMS"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_NOCHARGE_SMS:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x11

    const/16 v2, 0x11

    const-string v3, "EMUA_NOCHARGE_SENDER"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_NOCHARGE_SENDER:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x12

    const/16 v2, 0x12

    const-string v3, "EMUA_AUTO_RECOVER"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_AUTO_RECOVER:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x13

    const/16 v2, 0x13

    const-string v3, "EMUA_IMPEACH_SYSTEM"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_IMPEACH_SYSTEM:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-string v3, "EMUA_IMPEACH_AUTO_PROMPT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_IMPEACH_AUTO_PROMPT:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x15

    const/16 v2, 0x15

    const-string v3, "EMUA_AUTO_RECOVER2"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_AUTO_RECOVER2:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "EMUA_AUTO_RECOVER3"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_AUTO_RECOVER3:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "EMUA_USER_REPORT_TELTAG"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_USER_REPORT_TELTAG:LQQPIM/EUserAction;

    new-instance v0, LQQPIM/EUserAction;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "EMUA_MAX"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EUserAction;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUserAction;->EMUA_MAX:LQQPIM/EUserAction;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/EUserAction;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EUserAction;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EUserAction;->__value:I

    sget-object v0, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EUserAction;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EUserAction;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EUserAction;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LQQPIM/EUserAction;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EUserAction;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EUserAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EUserAction;->__values:[LQQPIM/EUserAction;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/EUserAction;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EUserAction;->__value:I

    return v0
.end method
