.class public final LWUPSYNC/InitRespHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/InitResp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/InitResp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/InitRespHolder;->value:LWUPSYNC/InitResp;

    return-void
.end method
