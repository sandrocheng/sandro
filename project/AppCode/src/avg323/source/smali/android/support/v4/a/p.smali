.class public final enum Landroid/support/v4/a/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Landroid/support/v4/a/p;

.field public static final enum b:Landroid/support/v4/a/p;

.field public static final enum c:Landroid/support/v4/a/p;

.field private static final synthetic d:[Landroid/support/v4/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/support/v4/a/p;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/a/p;->a:Landroid/support/v4/a/p;

    new-instance v0, Landroid/support/v4/a/p;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/a/p;->b:Landroid/support/v4/a/p;

    new-instance v0, Landroid/support/v4/a/p;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/a/p;->c:Landroid/support/v4/a/p;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v4/a/p;

    sget-object v1, Landroid/support/v4/a/p;->a:Landroid/support/v4/a/p;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v4/a/p;->b:Landroid/support/v4/a/p;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/v4/a/p;->c:Landroid/support/v4/a/p;

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/v4/a/p;->d:[Landroid/support/v4/a/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/a/p;
    .locals 1

    const-class v0, Landroid/support/v4/a/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/p;

    return-object v0
.end method

.method public static values()[Landroid/support/v4/a/p;
    .locals 1

    sget-object v0, Landroid/support/v4/a/p;->d:[Landroid/support/v4/a/p;

    invoke-virtual {v0}, [Landroid/support/v4/a/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/a/p;

    return-object v0
.end method
