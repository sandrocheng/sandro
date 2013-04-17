.class public final enum Lacr$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lacr$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lacr$b;

.field public static final enum b:Lacr$b;

.field public static final enum c:Lacr$b;

.field public static final enum d:Lacr$b;

.field public static final enum e:Lacr$b;

.field public static final enum f:Lacr$b;

.field public static final enum g:Lacr$b;

.field public static final enum h:Lacr$b;

.field public static final enum i:Lacr$b;

.field public static final enum j:Lacr$b;

.field public static final enum k:Lacr$b;

.field private static final synthetic l:[Lacr$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lacr$b;

    const-string v1, "BeginInitEngine"

    invoke-direct {v0, v1, v3}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->a:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "FinishInitEngine"

    invoke-direct {v0, v1, v4}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->b:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "ECancelScan"

    invoke-direct {v0, v1, v5}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->c:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "BeginPkgScan"

    invoke-direct {v0, v1, v6}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->d:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "FinisPkgScan"

    invoke-direct {v0, v1, v7}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->e:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "BeginSdScan"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->f:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "FinishSdScan"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->g:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "BeginColudScan"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->h:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "FinishColudScan"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->i:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "BeginTask"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->j:Lacr$b;

    new-instance v0, Lacr$b;

    const-string v1, "FinishTask"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lacr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$b;->k:Lacr$b;

    const/16 v0, 0xb

    new-array v0, v0, [Lacr$b;

    sget-object v1, Lacr$b;->a:Lacr$b;

    aput-object v1, v0, v3

    sget-object v1, Lacr$b;->b:Lacr$b;

    aput-object v1, v0, v4

    sget-object v1, Lacr$b;->c:Lacr$b;

    aput-object v1, v0, v5

    sget-object v1, Lacr$b;->d:Lacr$b;

    aput-object v1, v0, v6

    sget-object v1, Lacr$b;->e:Lacr$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lacr$b;->f:Lacr$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lacr$b;->g:Lacr$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lacr$b;->h:Lacr$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lacr$b;->i:Lacr$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lacr$b;->j:Lacr$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lacr$b;->k:Lacr$b;

    aput-object v2, v0, v1

    sput-object v0, Lacr$b;->l:[Lacr$b;

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

.method public static valueOf(Ljava/lang/String;)Lacr$b;
    .locals 1

    const-class v0, Lacr$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lacr$b;

    return-object v0
.end method

.method public static values()[Lacr$b;
    .locals 1

    sget-object v0, Lacr$b;->l:[Lacr$b;

    invoke-virtual {v0}, [Lacr$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lacr$b;

    return-object v0
.end method
