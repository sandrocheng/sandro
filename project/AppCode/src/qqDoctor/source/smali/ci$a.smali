.class public final enum Lci$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lci$a;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lci$a;

.field private static enum b:Lci$a;

.field private static enum c:Lci$a;

.field private static enum d:Lci$a;

.field private static enum e:Lci$a;

.field private static enum f:Lci$a;

.field private static enum g:Lci$a;

.field private static enum h:Lci$a;

.field private static enum i:Lci$a;

.field private static final synthetic k:[Lci$a;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_SUMSUNG"

    const-string v2, "vnd.sec.contact.sim"

    invoke-direct {v0, v1, v4, v2}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->a:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_SUMSUNG_SIM2"

    const-string v2, "vnd.sec.contact.sim2"

    invoke-direct {v0, v1, v5, v2}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->b:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_SUMSUNG_SIM"

    const-string v2, "vnd.sec.contact.sim"

    invoke-direct {v0, v1, v6, v2}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->c:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_MOTO"

    const-string v2, "g-contacts"

    invoke-direct {v0, v1, v7, v2}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->d:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_COOLPAD"

    const-string v2, "c-contacts"

    invoke-direct {v0, v1, v8, v2}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->e:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_HUAWEI"

    const/4 v2, 0x5

    const-string v3, "uim"

    invoke-direct {v0, v1, v2, v3}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->f:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_HUAWEI2"

    const/4 v2, 0x6

    const-string v3, "UIM"

    invoke-direct {v0, v1, v2, v3}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->g:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_HTC"

    const/4 v2, 0x7

    const-string v3, "SIM"

    invoke-direct {v0, v1, v2, v3}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->h:Lci$a;

    new-instance v0, Lci$a;

    const-string v1, "SIM_CONTACT_LG"

    const/16 v2, 0x8

    const-string v3, "sim"

    invoke-direct {v0, v1, v2, v3}, Lci$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lci$a;->i:Lci$a;

    const/16 v0, 0x9

    new-array v0, v0, [Lci$a;

    sget-object v1, Lci$a;->a:Lci$a;

    aput-object v1, v0, v4

    sget-object v1, Lci$a;->b:Lci$a;

    aput-object v1, v0, v5

    sget-object v1, Lci$a;->c:Lci$a;

    aput-object v1, v0, v6

    sget-object v1, Lci$a;->d:Lci$a;

    aput-object v1, v0, v7

    sget-object v1, Lci$a;->e:Lci$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lci$a;->f:Lci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lci$a;->g:Lci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lci$a;->h:Lci$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lci$a;->i:Lci$a;

    aput-object v2, v0, v1

    sput-object v0, Lci$a;->k:[Lci$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lci$a;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lci$a;
    .locals 1

    const-class v0, Lci$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lci$a;

    return-object v0
.end method

.method public static values()[Lci$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lci$a;->k:[Lci$a;

    array-length v1, v0

    new-array v2, v1, [Lci$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lci$a;->j:Ljava/lang/String;

    return-object v0
.end method
