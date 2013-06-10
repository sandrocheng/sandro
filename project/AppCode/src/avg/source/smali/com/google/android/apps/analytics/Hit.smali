.class public Lcom/google/android/apps/analytics/Hit;
.super Ljava/lang/Object;


# instance fields
.field final hitId:J

.field final hitString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/analytics/Hit;->hitString:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/analytics/Hit;->hitId:J

    return-void
.end method
