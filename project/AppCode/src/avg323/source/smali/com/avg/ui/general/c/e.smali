.class abstract Lcom/avg/ui/general/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field b:Landroid/app/NotificationManager;

.field c:I

.field final synthetic d:Lcom/avg/ui/general/c/c;


# direct methods
.method public constructor <init>(Lcom/avg/ui/general/c/c;Landroid/app/NotificationManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/c/e;->d:Lcom/avg/ui/general/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/avg/ui/general/c/e;->b:Landroid/app/NotificationManager;

    iput p3, p0, Lcom/avg/ui/general/c/e;->c:I

    return-void
.end method
