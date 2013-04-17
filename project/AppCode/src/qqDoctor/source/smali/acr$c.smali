.class public final enum Lacr$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lacr$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lacr$c;

.field public static final enum b:Lacr$c;

.field public static final enum c:Lacr$c;

.field public static final enum d:Lacr$c;

.field public static final enum e:Lacr$c;

.field public static final enum f:Lacr$c;

.field private static final synthetic g:[Lacr$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lacr$c;

    const-string v1, "UNSTART"

    invoke-direct {v0, v1, v3}, Lacr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$c;->a:Lacr$c;

    new-instance v0, Lacr$c;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v4}, Lacr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$c;->b:Lacr$c;

    new-instance v0, Lacr$c;

    const-string v1, "CANCLE"

    invoke-direct {v0, v1, v5}, Lacr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$c;->c:Lacr$c;

    new-instance v0, Lacr$c;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lacr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$c;->d:Lacr$c;

    new-instance v0, Lacr$c;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v7}, Lacr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$c;->e:Lacr$c;

    new-instance v0, Lacr$c;

    const-string v1, "FORCE_STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lacr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$c;->f:Lacr$c;

    const/4 v0, 0x6

    new-array v0, v0, [Lacr$c;

    sget-object v1, Lacr$c;->a:Lacr$c;

    aput-object v1, v0, v3

    sget-object v1, Lacr$c;->b:Lacr$c;

    aput-object v1, v0, v4

    sget-object v1, Lacr$c;->c:Lacr$c;

    aput-object v1, v0, v5

    sget-object v1, Lacr$c;->d:Lacr$c;

    aput-object v1, v0, v6

    sget-object v1, Lacr$c;->e:Lacr$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lacr$c;->f:Lacr$c;

    aput-object v2, v0, v1

    sput-object v0, Lacr$c;->g:[Lacr$c;

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

.method public static valueOf(Ljava/lang/String;)Lacr$c;
    .locals 1

    const-class v0, Lacr$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lacr$c;

    return-object v0
.end method

.method public static values()[Lacr$c;
    .locals 1

    sget-object v0, Lacr$c;->g:[Lacr$c;

    invoke-virtual {v0}, [Lacr$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lacr$c;

    return-object v0
.end method
