.class public final enum Lorg/antivirus/core/b/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/b/b;

.field public static final enum b:Lorg/antivirus/core/b/b;

.field public static final enum c:Lorg/antivirus/core/b/b;

.field private static final synthetic d:[Lorg/antivirus/core/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/core/b/b;

    const-string v1, "Base"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/b/b;->a:Lorg/antivirus/core/b/b;

    new-instance v0, Lorg/antivirus/core/b/b;

    const-string v1, "Advanced"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/core/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/b/b;->b:Lorg/antivirus/core/b/b;

    new-instance v0, Lorg/antivirus/core/b/b;

    const-string v1, "Full"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/core/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/antivirus/core/b/b;

    sget-object v1, Lorg/antivirus/core/b/b;->a:Lorg/antivirus/core/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/core/b/b;->b:Lorg/antivirus/core/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    aput-object v1, v0, v4

    sput-object v0, Lorg/antivirus/core/b/b;->d:[Lorg/antivirus/core/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lorg/antivirus/core/b/b;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lorg/antivirus/core/b/b;->a:Lorg/antivirus/core/b/b;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/antivirus/core/b/b;->a:Lorg/antivirus/core/b/b;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/antivirus/core/b/b;->b:Lorg/antivirus/core/b/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/b/b;
    .locals 1

    const-class v0, Lorg/antivirus/core/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/b/b;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/b/b;
    .locals 1

    sget-object v0, Lorg/antivirus/core/b/b;->d:[Lorg/antivirus/core/b/b;

    invoke-virtual {v0}, [Lorg/antivirus/core/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/b/b;

    return-object v0
.end method
