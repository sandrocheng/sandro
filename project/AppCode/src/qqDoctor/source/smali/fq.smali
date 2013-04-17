.class public final Lfq;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/app/PendingIntent;

.field public e:I

.field public f:Landroid/net/Uri;

.field public g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfq;->b:Ljava/lang/String;

    iput-object p2, p0, Lfq;->a:Ljava/lang/String;

    iput-object v0, p0, Lfq;->c:Ljava/lang/String;

    iput-object v0, p0, Lfq;->d:Landroid/app/PendingIntent;

    iget-object v0, p0, Lfq;->a:Ljava/lang/String;

    iput-object p5, p0, Lfq;->f:Landroid/net/Uri;

    iput-object p6, p0, Lfq;->g:Landroid/os/Bundle;

    iput p7, p0, Lfq;->e:I

    if-eqz p6, :cond_0

    const-string v0, "ACTION"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "FLAGS"

    const/4 v1, -0x1

    invoke-virtual {p6, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string v0, "CATEGORYS"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    :cond_0
    return-void
.end method
