.class final enum Lorg/antivirus/ui/main/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/ui/main/l;

.field public static final enum b:Lorg/antivirus/ui/main/l;

.field public static final enum c:Lorg/antivirus/ui/main/l;

.field private static final synthetic d:[Lorg/antivirus/ui/main/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/ui/main/l;

    const-string v1, "SCAN_NOW"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/ui/main/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/ui/main/l;->a:Lorg/antivirus/ui/main/l;

    new-instance v0, Lorg/antivirus/ui/main/l;

    const-string v1, "VIEW_RESULTS"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/ui/main/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/ui/main/l;->b:Lorg/antivirus/ui/main/l;

    new-instance v0, Lorg/antivirus/ui/main/l;

    const-string v1, "STOP_SCAN"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/ui/main/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/ui/main/l;->c:Lorg/antivirus/ui/main/l;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/antivirus/ui/main/l;

    sget-object v1, Lorg/antivirus/ui/main/l;->a:Lorg/antivirus/ui/main/l;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/ui/main/l;->b:Lorg/antivirus/ui/main/l;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/ui/main/l;->c:Lorg/antivirus/ui/main/l;

    aput-object v1, v0, v4

    sput-object v0, Lorg/antivirus/ui/main/l;->d:[Lorg/antivirus/ui/main/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/ui/main/l;
    .locals 1

    const-class v0, Lorg/antivirus/ui/main/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/main/l;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/ui/main/l;
    .locals 1

    sget-object v0, Lorg/antivirus/ui/main/l;->d:[Lorg/antivirus/ui/main/l;

    invoke-virtual {v0}, [Lorg/antivirus/ui/main/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/ui/main/l;

    return-object v0
.end method
