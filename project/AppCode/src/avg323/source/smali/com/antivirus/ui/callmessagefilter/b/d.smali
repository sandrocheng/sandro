.class public final enum Lcom/antivirus/ui/callmessagefilter/b/d;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/antivirus/ui/callmessagefilter/x;


# static fields
.field public static final enum a:Lcom/antivirus/ui/callmessagefilter/b/d;

.field public static final enum b:Lcom/antivirus/ui/callmessagefilter/b/d;

.field public static final enum c:Lcom/antivirus/ui/callmessagefilter/b/d;

.field public static final enum d:Lcom/antivirus/ui/callmessagefilter/b/d;

.field public static final enum e:Lcom/antivirus/ui/callmessagefilter/b/d;

.field private static final synthetic h:[Lcom/antivirus/ui/callmessagefilter/b/d;


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    const-string v1, "OK"

    const v2, 0x7f0200cc

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/antivirus/ui/callmessagefilter/b/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    const-string v1, "SUSPICIOUS"

    const v2, 0x7f0200d0

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/antivirus/ui/callmessagefilter/b/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    const-string v1, "BLOCKED"

    const v2, 0x7f0200c7

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/antivirus/ui/callmessagefilter/b/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    const-string v1, "SPAM"

    const v2, 0x7f0200ca

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/antivirus/ui/callmessagefilter/b/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    const-string v1, "TRUSTED"

    const v2, 0x7f0200d1

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/antivirus/ui/callmessagefilter/b/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/antivirus/ui/callmessagefilter/b/d;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    aput-object v1, v0, v7

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->h:[Lcom/antivirus/ui/callmessagefilter/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/antivirus/ui/callmessagefilter/b/d;->g:I

    iput p4, p0, Lcom/antivirus/ui/callmessagefilter/b/d;->f:I

    return-void
.end method

.method public static a(I)Lcom/antivirus/ui/callmessagefilter/b/d;
    .locals 5

    invoke-static {}, Lcom/antivirus/ui/callmessagefilter/b/d;->values()[Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/antivirus/ui/callmessagefilter/b/d;->g:I

    if-ne p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/b/d;
    .locals 1

    const-class v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/callmessagefilter/b/d;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->h:[Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0}, [Lcom/antivirus/ui/callmessagefilter/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/callmessagefilter/b/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/b/d;->f:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/b/d;->g:I

    return v0
.end method
