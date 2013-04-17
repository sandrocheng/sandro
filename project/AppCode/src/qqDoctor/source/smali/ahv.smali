.class public final Lahv;
.super Ljava/lang/Object;

# interfaces
.implements Lacj$a;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)V
    .locals 0

    iput-object p1, p0, Lahv;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lahv;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->f(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Lms;)V
    .locals 7

    iget-object v0, p0, Lahv;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lahv;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->e(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Lkl;

    move-result-object v0

    iget-wide v1, p1, Lms;->a:J

    sget v3, Lmt;->b:I

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lmt;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v0, Lkl;->a:Lhs;

    const-string v3, "virus_notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lmt;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final b(Lms;)V
    .locals 1

    iget-object v0, p0, Lahv;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Z

    iget-object v0, p0, Lahv;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
