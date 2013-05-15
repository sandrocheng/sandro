.class public final enum Lcom/avast/android/mobilesecurity/app/scanner/ao;
.super Ljava/lang/Enum;
.source "VirusShieldActivity.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/app/scanner/ao;

.field public static final enum b:Lcom/avast/android/mobilesecurity/app/scanner/ao;

.field private static final synthetic c:[Lcom/avast/android/mobilesecurity/app/scanner/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;

    const-string v1, "REALTIME"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;->a:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;

    const-string v1, "STORAGE"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/mobilesecurity/app/scanner/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;->b:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/scanner/ao;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/scanner/ao;->a:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/app/scanner/ao;->b:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;->c:[Lcom/avast/android/mobilesecurity/app/scanner/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/scanner/ao;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/app/scanner/ao;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ao;->c:[Lcom/avast/android/mobilesecurity/app/scanner/ao;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/app/scanner/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/app/scanner/ao;

    return-object v0
.end method
