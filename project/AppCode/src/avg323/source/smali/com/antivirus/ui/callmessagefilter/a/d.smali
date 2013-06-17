.class public final enum Lcom/antivirus/ui/callmessagefilter/a/d;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/antivirus/ui/callmessagefilter/x;


# static fields
.field public static final enum a:Lcom/antivirus/ui/callmessagefilter/a/d;

.field public static final enum b:Lcom/antivirus/ui/callmessagefilter/a/d;

.field public static final enum c:Lcom/antivirus/ui/callmessagefilter/a/d;

.field public static final enum d:Lcom/antivirus/ui/callmessagefilter/a/d;

.field public static final enum e:Lcom/antivirus/ui/callmessagefilter/a/d;

.field private static final synthetic h:[Lcom/antivirus/ui/callmessagefilter/a/d;


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/d;

    const-string v1, "INCOMING"

    const v2, 0x7f0200c9

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/antivirus/ui/callmessagefilter/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->a:Lcom/antivirus/ui/callmessagefilter/a/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/d;

    const-string v1, "MISSED"

    const v2, 0x7f0200cb

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/antivirus/ui/callmessagefilter/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->b:Lcom/antivirus/ui/callmessagefilter/a/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/d;

    const-string v1, "SILENT"

    const/16 v2, 0x68

    const v3, 0x7f0200cf

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/antivirus/ui/callmessagefilter/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->c:Lcom/antivirus/ui/callmessagefilter/a/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/d;

    const-string v1, "REJECTED"

    const/16 v2, 0x69

    const v3, 0x7f0200cd

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/antivirus/ui/callmessagefilter/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/d;

    const-string v1, "REJECTED_WITH_SMS"

    const/16 v2, 0x6a

    const v3, 0x7f0200ce

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/antivirus/ui/callmessagefilter/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/antivirus/ui/callmessagefilter/a/d;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->a:Lcom/antivirus/ui/callmessagefilter/a/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->b:Lcom/antivirus/ui/callmessagefilter/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->c:Lcom/antivirus/ui/callmessagefilter/a/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    aput-object v1, v0, v8

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->h:[Lcom/antivirus/ui/callmessagefilter/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/antivirus/ui/callmessagefilter/a/d;->f:I

    iput p3, p0, Lcom/antivirus/ui/callmessagefilter/a/d;->g:I

    return-void
.end method

.method public static a(I)Lcom/antivirus/ui/callmessagefilter/a/d;
    .locals 5

    invoke-static {}, Lcom/antivirus/ui/callmessagefilter/a/d;->values()[Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/antivirus/ui/callmessagefilter/a/d;->g:I

    if-ne p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/a/d;
    .locals 1

    const-class v0, Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/a/d;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/callmessagefilter/a/d;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->h:[Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v0}, [Lcom/antivirus/ui/callmessagefilter/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/callmessagefilter/a/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/a/d;->f:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/a/d;->g:I

    return v0
.end method
