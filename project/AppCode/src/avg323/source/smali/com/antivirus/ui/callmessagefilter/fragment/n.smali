.class public final enum Lcom/antivirus/ui/callmessagefilter/fragment/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/ui/callmessagefilter/fragment/n;

.field public static final enum b:Lcom/antivirus/ui/callmessagefilter/fragment/n;

.field private static final synthetic d:[Lcom/antivirus/ui/callmessagefilter/fragment/n;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;

    const-string v1, "CALLS"

    const v2, 0x7f0b0006

    invoke-direct {v0, v1, v3, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->a:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;

    const-string v1, "MESSAGES"

    const v2, 0x7f0b0007

    invoke-direct {v0, v1, v4, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->b:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/antivirus/ui/callmessagefilter/fragment/n;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/n;->a:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/n;->b:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->d:[Lcom/antivirus/ui/callmessagefilter/fragment/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/fragment/n;
    .locals 1

    const-class v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/callmessagefilter/fragment/n;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->d:[Lcom/antivirus/ui/callmessagefilter/fragment/n;

    invoke-virtual {v0}, [Lcom/antivirus/ui/callmessagefilter/fragment/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/callmessagefilter/fragment/n;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->c:I

    return v0
.end method
