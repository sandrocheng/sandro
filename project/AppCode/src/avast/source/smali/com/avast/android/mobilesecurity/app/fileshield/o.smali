.class final enum Lcom/avast/android/mobilesecurity/app/fileshield/o;
.super Ljava/lang/Enum;
.source "FileShieldService.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/app/fileshield/o;

.field public static final enum b:Lcom/avast/android/mobilesecurity/app/fileshield/o;

.field public static final enum c:Lcom/avast/android/mobilesecurity/app/fileshield/o;

.field public static final enum d:Lcom/avast/android/mobilesecurity/app/fileshield/o;

.field private static final synthetic e:[Lcom/avast/android/mobilesecurity/app/fileshield/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 928
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;->a:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    .line 934
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/app/fileshield/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;->b:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    .line 939
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;

    const-string v1, "RENAME"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/mobilesecurity/app/fileshield/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;->c:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    .line 944
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;

    const-string v1, "FILE_SHIELD_SETTINGS_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/avast/android/mobilesecurity/app/fileshield/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;->d:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    .line 924
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/fileshield/o;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/fileshield/o;->a:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/app/fileshield/o;->b:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/app/fileshield/o;->c:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/app/fileshield/o;->d:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;->e:[Lcom/avast/android/mobilesecurity/app/fileshield/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/fileshield/o;
    .locals 1
    .parameter

    .prologue
    .line 924
    const-class v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/app/fileshield/o;
    .locals 1

    .prologue
    .line 924
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;->e:[Lcom/avast/android/mobilesecurity/app/fileshield/o;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/app/fileshield/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/app/fileshield/o;

    return-object v0
.end method