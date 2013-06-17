.class Lcom/antivirus/ui/callmessagefilter/fragment/l;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/k;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/k;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/l;->a:Lcom/antivirus/ui/callmessagefilter/fragment/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/l;->a:Lcom/antivirus/ui/callmessagefilter/fragment/k;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/k;->a:Lcom/antivirus/ui/callmessagefilter/fragment/g;

    const/4 v1, 0x1

    const-string v2, "ASC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/l;->a:Lcom/antivirus/ui/callmessagefilter/fragment/k;

    iget-object v4, v4, Lcom/antivirus/ui/callmessagefilter/fragment/k;->a:Lcom/antivirus/ui/callmessagefilter/fragment/g;

    iget-wide v6, v4, Lcom/antivirus/ui/callmessagefilter/fragment/g;->i:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/antivirus/ui/callmessagefilter/fragment/l;->a:Lcom/antivirus/ui/callmessagefilter/fragment/k;

    iget-object v6, v6, Lcom/antivirus/ui/callmessagefilter/fragment/k;->a:Lcom/antivirus/ui/callmessagefilter/fragment/g;

    iget-wide v6, v6, Lcom/antivirus/ui/callmessagefilter/fragment/g;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Lcom/antivirus/ui/callmessagefilter/fragment/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/l;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
