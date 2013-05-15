.class public Lcom/avast/android/mobilesecurity/scan/ScanProgress;
.super Ljava/lang/Object;
.source "ScanProgress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/h;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/scan/h;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->a:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->j:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->k:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->i:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->l:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    .line 109
    return-void

    :cond_0
    move v0, v2

    .line 104
    goto :goto_0

    :cond_1
    move v1, v2

    .line 108
    goto :goto_1
.end method

.method constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    iget v2, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    invoke-direct {p0, v0, v1, v2}, Lcom/avast/android/mobilesecurity/scan/ScanProgress;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    .line 55
    iget v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 56
    iget v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 57
    iget v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 58
    iget v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->i:I

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->i:I

    .line 59
    iget-boolean v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->j:Z

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->j:Z

    .line 60
    iget v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->l:I

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->l:I

    .line 61
    iget-boolean v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->a:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    .line 115
    iput p3, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    .line 116
    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 117
    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 118
    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 119
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    .line 120
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->j:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 81
    goto :goto_1
.end method
