.class public final enum Lcom/antivirus/ui/callmessagefilter/fragment/r;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/antivirus/ui/callmessagefilter/w;


# static fields
.field public static final enum a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

.field public static final enum b:Lcom/antivirus/ui/callmessagefilter/fragment/r;

.field public static final enum c:Lcom/antivirus/ui/callmessagefilter/fragment/r;

.field private static final synthetic f:[Lcom/antivirus/ui/callmessagefilter/fragment/r;


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    const-string v1, "ALL_CONTACTS"

    const v2, 0x7f0901f3

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/r;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    const-string v1, "BLOCKED_CONTACTS"

    const v2, 0x7f0901f4

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/r;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->b:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    const-string v1, "TRUSTED_CONTACTS"

    const v2, 0x7f0901f5

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/r;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->c:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/antivirus/ui/callmessagefilter/fragment/r;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;->b:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;->c:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    aput-object v1, v0, v5

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->f:[Lcom/antivirus/ui/callmessagefilter/fragment/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->d:I

    iput p4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->e:I

    return-void
.end method

.method public static a(I)Lcom/antivirus/ui/callmessagefilter/fragment/r;
    .locals 5

    invoke-static {}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->values()[Lcom/antivirus/ui/callmessagefilter/fragment/r;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->d:I

    if-ne p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/fragment/r;
    .locals 1

    const-class v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/callmessagefilter/fragment/r;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->f:[Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0}, [Lcom/antivirus/ui/callmessagefilter/fragment/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/callmessagefilter/fragment/r;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->d:I

    return v0
.end method

.method public synthetic b()[Lcom/antivirus/ui/callmessagefilter/x;
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->d()[Lcom/antivirus/ui/callmessagefilter/contacts/k;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->e:I

    return v0
.end method

.method public d()[Lcom/antivirus/ui/callmessagefilter/contacts/k;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/antivirus/ui/callmessagefilter/contacts/k;

    return-object v0
.end method
