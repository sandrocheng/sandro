.class final enum Lbot$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbot$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbot$b;

.field public static final enum b:Lbot$b;

.field public static final enum c:Lbot$b;

.field private static final synthetic d:[Lbot$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbot$b;

    const-string v1, "isShowingDownloadTips"

    invoke-direct {v0, v1, v2}, Lbot$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbot$b;->a:Lbot$b;

    new-instance v0, Lbot$b;

    const-string v1, "isShowingBackupTips"

    invoke-direct {v0, v1, v3}, Lbot$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbot$b;->b:Lbot$b;

    new-instance v0, Lbot$b;

    const-string v1, "isNotShowing"

    invoke-direct {v0, v1, v4}, Lbot$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbot$b;->c:Lbot$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lbot$b;

    sget-object v1, Lbot$b;->a:Lbot$b;

    aput-object v1, v0, v2

    sget-object v1, Lbot$b;->b:Lbot$b;

    aput-object v1, v0, v3

    sget-object v1, Lbot$b;->c:Lbot$b;

    aput-object v1, v0, v4

    sput-object v0, Lbot$b;->d:[Lbot$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbot$b;
    .locals 1

    const-class v0, Lbot$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbot$b;

    return-object v0
.end method

.method public static values()[Lbot$b;
    .locals 1

    sget-object v0, Lbot$b;->d:[Lbot$b;

    invoke-virtual {v0}, [Lbot$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbot$b;

    return-object v0
.end method
