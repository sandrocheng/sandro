.class public Lorg/antivirus/tools/NotificationCanceler;
.super Ljava/lang/Object;


# static fields
.field public static final NOTIFICATION_ID_BATTERY:I = 0xb

.field public static final NOTIFICATION_ID_C2DM:I = 0x3df

.field public static final NOTIFICATION_ID_LICENSE_ACTIVATION:I = 0x7d2

.field public static final NOTIFICATION_ID_LICENSE_EXPIRED:I = 0xd

.field public static final NOTIFICATION_ID_SCAN_NEW_INSTALLED_PACKAGE:I = 0xf

.field public static final NOTIFICATION_ID_SCHEDULE_SCAN:I = 0xe

.field public static final NOTIFICATION_ID_TRAFFIC:I = 0xc

.field public static final NOTIFICATION_ID_VERSION_UPDATE:I = 0x7d1


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;IJ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/antivirus/tools/NotificationCanceler$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/antivirus/tools/NotificationCanceler$1;-><init>(Lorg/antivirus/tools/NotificationCanceler;Landroid/app/NotificationManager;IJ)V

    invoke-virtual {v6, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
