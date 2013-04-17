.class public final LWUPSYNC/DownloadReqHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/DownloadReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/DownloadReq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/DownloadReqHolder;->value:LWUPSYNC/DownloadReq;

    return-void
.end method
