.class public Lcom/antivirus/ui/callmessagefilter/b/b;
.super Lcom/antivirus/ui/callmessagefilter/i;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;JLjava/lang/String;Ljava/util/Date;)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/antivirus/ui/callmessagefilter/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/x;JLjava/lang/String;Ljava/util/Date;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b/b;->b:Ljava/lang/String;

    return-object v0
.end method
