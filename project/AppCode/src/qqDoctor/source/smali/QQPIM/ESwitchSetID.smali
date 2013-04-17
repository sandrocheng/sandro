.class public final LQQPIM/ESwitchSetID;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ESSID_Cloud_Update:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_Connect_Debug_Server:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_Crash_Report:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_END:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_Flow_Dial:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_Module_Advance_Defence:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_None:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_Notify_iCloudSrc_Conflict:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_Recommend_Soft:LQQPIM/ESwitchSetID; = null

.field public static final ESSID_Report_Soft_List:LQQPIM/ESwitchSetID; = null

.field public static final _ESSID_Cloud_Update:I = 0x5

.field public static final _ESSID_Connect_Debug_Server:I = 0x4

.field public static final _ESSID_Crash_Report:I = 0x1

.field public static final _ESSID_END:I = 0x9

.field public static final _ESSID_Flow_Dial:I = 0x3

.field public static final _ESSID_Module_Advance_Defence:I = 0x2

.field public static final _ESSID_None:I = 0x0

.field public static final _ESSID_Notify_iCloudSrc_Conflict:I = 0x8

.field public static final _ESSID_Recommend_Soft:I = 0x6

.field public static final _ESSID_Report_Soft_List:I = 0x7

.field private static __values:[LQQPIM/ESwitchSetID;


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

    const-class v0, LQQPIM/ESwitchSetID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ESwitchSetID;->$assertionsDisabled:Z

    const/16 v0, 0xa

    new-array v0, v0, [LQQPIM/ESwitchSetID;

    sput-object v0, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const-string v3, "ESSID_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_None:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const-string v2, "ESSID_Crash_Report"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Crash_Report:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const-string v1, "ESSID_Module_Advance_Defence"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Module_Advance_Defence:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const-string v1, "ESSID_Flow_Dial"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Flow_Dial:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const-string v1, "ESSID_Connect_Debug_Server"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Connect_Debug_Server:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "ESSID_Cloud_Update"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Cloud_Update:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "ESSID_Recommend_Soft"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Recommend_Soft:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "ESSID_Report_Soft_List"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Report_Soft_List:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "ESSID_Notify_iCloudSrc_Conflict"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_Notify_iCloudSrc_Conflict:LQQPIM/ESwitchSetID;

    new-instance v0, LQQPIM/ESwitchSetID;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "ESSID_END"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESwitchSetID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESwitchSetID;->ESSID_END:LQQPIM/ESwitchSetID;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/ESwitchSetID;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ESwitchSetID;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ESwitchSetID;->__value:I

    sget-object v0, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/ESwitchSetID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ESwitchSetID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ESwitchSetID;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

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

.method public static convert(Ljava/lang/String;)LQQPIM/ESwitchSetID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ESwitchSetID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ESwitchSetID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/ESwitchSetID;->__values:[LQQPIM/ESwitchSetID;

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

    iget-object v0, p0, LQQPIM/ESwitchSetID;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ESwitchSetID;->__value:I

    return v0
.end method
