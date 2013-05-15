.class Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z

.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1179
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/f;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/ui/f;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1140
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->a:Ljava/lang/String;

    .line 1142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->b:I

    .line 1143
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->c:Z

    .line 1144
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->d:Z

    .line 1145
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->e:Z

    .line 1146
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/avast/android/mobilesecurity/ui/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1128
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1129
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->a:Ljava/lang/String;

    .line 1130
    iput p3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->b:I

    .line 1131
    iput-boolean p4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->c:Z

    .line 1132
    iput-boolean p5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->d:Z

    .line 1133
    iput-boolean p6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->e:Z

    .line 1134
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/avast/android/mobilesecurity/ui/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1115
    invoke-direct/range {p0 .. p6}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->e:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1170
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1172
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1174
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1175
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1176
    return-void
.end method
