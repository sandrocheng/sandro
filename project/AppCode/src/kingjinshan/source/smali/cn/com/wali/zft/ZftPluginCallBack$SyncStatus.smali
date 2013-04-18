.class public final enum Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;
.super Ljava/lang/Enum;
.source "ZftPluginCallBack.java"


# static fields
.field private static final synthetic $VALUES:[Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

.field public static final enum sms_fail:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

.field public static final enum sms_success:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    const-string v1, "sms_success"

    invoke-direct {v0, v1, v2}, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->sms_success:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    .line 20
    new-instance v0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    const-string v1, "sms_fail"

    invoke-direct {v0, v1, v3}, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->sms_fail:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    sget-object v1, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->sms_success:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->sms_fail:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->$VALUES:[Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    return-object p0
.end method

.method public static values()[Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->$VALUES:[Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    invoke-virtual {v0}, [Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    return-object v0
.end method
