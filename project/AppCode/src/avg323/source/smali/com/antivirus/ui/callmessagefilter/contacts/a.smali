.class public Lcom/antivirus/ui/callmessagefilter/contacts/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/antivirus/ui/callmessagefilter/b/d;

.field private b:Lcom/antivirus/ui/callmessagefilter/a/d;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/antivirus/core/b/b/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->d:Z

    invoke-virtual {p1}, Lcom/antivirus/core/b/b/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->a(I)Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p1}, Lcom/antivirus/core/b/b/a;->b()I

    move-result v0

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/a/d;->a(I)Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b:Lcom/antivirus/ui/callmessagefilter/a/d;

    const-string v0, "null"

    invoke-virtual {p1}, Lcom/antivirus/core/b/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/antivirus/core/b/b/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->d:Z

    if-nez p1, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    :goto_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->a:Lcom/antivirus/ui/callmessagefilter/a/d;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b:Lcom/antivirus/ui/callmessagefilter/a/d;

    :goto_1
    const-string v0, "null"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b:Lcom/antivirus/ui/callmessagefilter/a/d;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/contacts/a;-><init>(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/antivirus/ui/callmessagefilter/b/d;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    return-object v0
.end method

.method public a(Lcom/antivirus/ui/callmessagefilter/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b:Lcom/antivirus/ui/callmessagefilter/a/d;

    return-void
.end method

.method public a(Lcom/antivirus/ui/callmessagefilter/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->d:Z

    return-void
.end method

.method public b()Lcom/antivirus/ui/callmessagefilter/a/d;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b:Lcom/antivirus/ui/callmessagefilter/a/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/a;->d:Z

    return v0
.end method
