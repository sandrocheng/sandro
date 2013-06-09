.class abstract Lorg/antivirus/tools/NotificationCanceler$MyRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field b:Landroid/app/NotificationManager;

.field c:I

.field final synthetic d:Lorg/antivirus/tools/NotificationCanceler;


# direct methods
.method public constructor <init>(Lorg/antivirus/tools/NotificationCanceler;Landroid/app/NotificationManager;IJ)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tools/NotificationCanceler$MyRunnable;->d:Lorg/antivirus/tools/NotificationCanceler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/antivirus/tools/NotificationCanceler$MyRunnable;->b:Landroid/app/NotificationManager;

    iput p3, p0, Lorg/antivirus/tools/NotificationCanceler$MyRunnable;->c:I

    return-void
.end method
