.class public final LWUPSYNC/StatusHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/StatusHolder;->value:LWUPSYNC/Status;

    return-void
.end method
