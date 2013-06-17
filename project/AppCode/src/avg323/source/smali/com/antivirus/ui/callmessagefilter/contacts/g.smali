.class public Lcom/antivirus/ui/callmessagefilter/contacts/g;
.super Lcom/antivirus/ui/callmessagefilter/d;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Lcom/antivirus/ui/callmessagefilter/contacts/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v4, Lcom/antivirus/ui/callmessagefilter/contacts/k;->a:Lcom/antivirus/ui/callmessagefilter/contacts/k;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/antivirus/ui/callmessagefilter/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/x;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/ui/callmessagefilter/contacts/g;)I
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a(Lcom/antivirus/ui/callmessagefilter/contacts/g;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public i()Lcom/antivirus/ui/callmessagefilter/b/d;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Lcom/antivirus/ui/callmessagefilter/a/d;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->a:Lcom/antivirus/ui/callmessagefilter/a/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public k()Lcom/antivirus/ui/callmessagefilter/contacts/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsData{blackWhiteListData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a:Lcom/antivirus/ui/callmessagefilter/contacts/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/antivirus/ui/callmessagefilter/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
